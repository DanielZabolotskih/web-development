<?php 
    $text = isset($_GET['text']) ? $_GET['text'] : null;
    echo $text . '<br>';
    if ($text !== null)
    {
        $currChar = '';
        $oldChar = '';
        $printedChar = '';

        for ($i = 0; $i < strlen($text); $i++)
        {
            $oldChar = $currChar;
            $currChar = $text[$i];
            
            if ($currChar !== ' ')
            {
                $printedChar = $currChar;
                echo $printedChar;
            }

            if ($currChar === '' && $oldChar !== '' && $printedChar !== '')
            {
                $printedChar = '';
                echo $printedChar;
            }
        }
    }    